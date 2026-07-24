const firstCharacterLowerCase = (parsed) => {
  const subject = parsed.subject || '';

  if (!subject) {
    return [true];
  }

  return [
    subject[0] === subject[0].toLowerCase(),
    'subject must start with a lowercase character',
  ];
};

const subjectNotVague = (parsed) => {
  const subject = (parsed.subject || '').trim().toLowerCase();
  const vagueSubjects = new Set([
    'update',
    'updates',
    'changes',
    'misc changes',
    'various fixes',
    'fix stuff',
    'automated update',
    'save work',
    'checkpoint',
    'temp',
    'test',
    'try',
    'wip',
  ]);

  return [
    !vagueSubjects.has(subject),
    'subject must describe the concrete change',
  ];
};

module.exports = {
  extends: ['@commitlint/config-conventional'],
  plugins: [
    {
      rules: {
        'subject-first-character-lower-case': firstCharacterLowerCase,
        'subject-not-vague': subjectNotVague,
      },
    },
  ],
  rules: {
    'type-enum': [
      2,
      'always',
      [
        'feat',
        'fix',
        'docs',
        'refactor',
        'test',
        'build',
        'ci',
        'chore',
        'perf',
        'style',
        'revert',
        'security',
      ],
    ],
    'type-case': [2, 'always', 'lower-case'],
    'scope-empty': [2, 'never'],
    'scope-case': [2, 'always', 'kebab-case'],
    'subject-empty': [2, 'never'],
    'subject-full-stop': [2, 'never', '.'],
    'subject-max-length': [2, 'always', 72],
    'body-leading-blank': [2, 'always'],
    'footer-leading-blank': [2, 'always'],
    'subject-first-character-lower-case': [2, 'always'],
    'subject-not-vague': [2, 'always'],
  },
};
